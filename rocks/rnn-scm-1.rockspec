package = "rnn"
version = "scm-1"

source = {
   url = "git://github.com/jxchen01/rnn.git",
   tag = "master"
}

description = {
   summary = "A Recurrent Neural Network library that extends Torch's nn",
   detailed = [[
A library to build RNNs, LSTMs, GRUs, BRNNs, BLSTMs, and so forth and so on.
   ]],
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "dpnn >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
