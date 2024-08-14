module {
  func.func @test_reduce_log_sum_default(%arg0: !torch.vtensor<[3,4,5],f32>, %arg1: !torch.vtensor<[0],si64>) -> !torch.vtensor<[1,1,1],f32> attributes {torch.onnx_meta.ir_version = 8 : si64, torch.onnx_meta.opset_version = 18 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
    %none = torch.constant.none
    %0 = torch.operator "onnx.ReduceLogSum"(%arg0, %arg1) : (!torch.vtensor<[3,4,5],f32>, !torch.vtensor<[0],si64>) -> !torch.vtensor<[1,1,1],f32> 
    return %0 : !torch.vtensor<[1,1,1],f32>
  }
}
