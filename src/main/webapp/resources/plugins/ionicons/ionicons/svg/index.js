
if (require && require.context) {
  require.context('!!file-loader?name=[name].[ext]&outputPath=svg!./', false, /.svg$/);
}
