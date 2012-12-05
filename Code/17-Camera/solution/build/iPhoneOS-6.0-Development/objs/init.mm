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
void MREP_97A1C966F3E6441985D77F3BABB56F8C(void *, void *);
void MREP_C8B3359BA6CF446193CB533B3953FC27(void *, void *);
void MREP_77F92C2D075E489AA0FC43C997A5A2A8(void *, void *);
void MREP_52216DF1AD3344A08D4D9D953B700AD2(void *, void *);
void MREP_0FB41395A407417E8E8B73129AB655B2(void *, void *);
void MREP_A1254B93AF3D4AF08B2E8AAF1A048F1B(void *, void *);
void MREP_A0EC370EA7404BD4A3A514F51F00486C(void *, void *);
void MREP_766B955673E149A998ECF33A53362886(void *, void *);
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
MREP_97A1C966F3E6441985D77F3BABB56F8C(self, 0);
MREP_C8B3359BA6CF446193CB533B3953FC27(self, 0);
MREP_77F92C2D075E489AA0FC43C997A5A2A8(self, 0);
MREP_52216DF1AD3344A08D4D9D953B700AD2(self, 0);
MREP_0FB41395A407417E8E8B73129AB655B2(self, 0);
MREP_A1254B93AF3D4AF08B2E8AAF1A048F1B(self, 0);
MREP_A0EC370EA7404BD4A3A514F51F00486C(self, 0);
MREP_766B955673E149A998ECF33A53362886(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
