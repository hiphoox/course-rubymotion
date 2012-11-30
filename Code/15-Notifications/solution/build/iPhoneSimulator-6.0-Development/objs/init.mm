#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_1CF85DB6086340B0B22F79C782BE02AC(void *, void *);
void MREP_BE59501F14AF4001B0DB6B6CE621BD32(void *, void *);
void MREP_8C3D95D4895D463DA0DA4FF7FD322258(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_1CF85DB6086340B0B22F79C782BE02AC(self, 0);
MREP_BE59501F14AF4001B0DB6B6CE621BD32(self, 0);
MREP_8C3D95D4895D463DA0DA4FF7FD322258(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
