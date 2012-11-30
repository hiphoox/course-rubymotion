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
void MREP_EFE4D399C597473A911337B48C119B89(void *, void *);
void MREP_6C3637F57F814BA0ABD2CEFF01B46C3B(void *, void *);
void MREP_C4B836DDB18945C082469A327E5D5A23(void *, void *);
void MREP_051755B0E4ED4945A42DC037E80AE01E(void *, void *);
void MREP_5CD181CAE1384CED95F39AE2B5C53075(void *, void *);
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
MREP_EFE4D399C597473A911337B48C119B89(self, 0);
MREP_6C3637F57F814BA0ABD2CEFF01B46C3B(self, 0);
MREP_C4B836DDB18945C082469A327E5D5A23(self, 0);
MREP_051755B0E4ED4945A42DC037E80AE01E(self, 0);
MREP_5CD181CAE1384CED95F39AE2B5C53075(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
