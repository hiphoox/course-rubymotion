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
void MREP_1963EF7FB22F417FB6D2F0645349333A(void *, void *);
void MREP_49F7B07499684A6AB2A2CD16FBB5AB60(void *, void *);
void MREP_15F032816EB342C18331A086182F1FAD(void *, void *);
void MREP_7DCFF136EAF149DC99CC3693C4661E7B(void *, void *);
void MREP_1B57FB6499A7438E97B32FEC8E458A50(void *, void *);
void MREP_C82D79143DD242CCB73A70E3BFA9BDA5(void *, void *);
void MREP_CB0250C08634431384ADD75431FBA801(void *, void *);
void MREP_462B607FAD2F4692BE9BDAA655D96BE0(void *, void *);
void MREP_E67F9C88D55A457C96741065D19BAA6B(void *, void *);
void MREP_C51DD576A07F4E7592B1ABA8A80D6B14(void *, void *);
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
MREP_1963EF7FB22F417FB6D2F0645349333A(self, 0);
MREP_49F7B07499684A6AB2A2CD16FBB5AB60(self, 0);
MREP_15F032816EB342C18331A086182F1FAD(self, 0);
MREP_7DCFF136EAF149DC99CC3693C4661E7B(self, 0);
MREP_1B57FB6499A7438E97B32FEC8E458A50(self, 0);
MREP_C82D79143DD242CCB73A70E3BFA9BDA5(self, 0);
MREP_CB0250C08634431384ADD75431FBA801(self, 0);
MREP_462B607FAD2F4692BE9BDAA655D96BE0(self, 0);
MREP_E67F9C88D55A457C96741065D19BAA6B(self, 0);
MREP_C51DD576A07F4E7592B1ABA8A80D6B14(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
