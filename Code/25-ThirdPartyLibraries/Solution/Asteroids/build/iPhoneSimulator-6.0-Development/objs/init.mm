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
void MREP_F51FC8B9880847A59399AEAEEB3BDE6A(void *, void *);
void MREP_DB3E0C96CE5C4E79A02AFA2BC68947A8(void *, void *);
void MREP_04C9E3B52D3B4F50BDD59A220AEE35B5(void *, void *);
void MREP_C1A5B0BADF5C416D99036F5E7317F049(void *, void *);
void MREP_3EDE566A6E8243F1959A3D788816ED4C(void *, void *);
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
MREP_F51FC8B9880847A59399AEAEEB3BDE6A(self, 0);
MREP_DB3E0C96CE5C4E79A02AFA2BC68947A8(self, 0);
MREP_04C9E3B52D3B4F50BDD59A220AEE35B5(self, 0);
MREP_C1A5B0BADF5C416D99036F5E7317F049(self, 0);
MREP_3EDE566A6E8243F1959A3D788816ED4C(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
