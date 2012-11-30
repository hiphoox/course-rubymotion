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
void MREP_F38AE3BCBDB84A8D98839D7B49600744(void *, void *);
void MREP_9B995ABB73054B77B812AC35FB39442E(void *, void *);
void MREP_D18607D96F454256BA0FF7870A5609FC(void *, void *);
void MREP_894F8204B484421BA46ACB2DD69CD561(void *, void *);
void MREP_F8C444C6C677439BA7D834EEE47618A9(void *, void *);
void MREP_3BD814E33E684DD0A21EE25C415D680B(void *, void *);
void MREP_622C1F3BD35147A1BF4962376C7B3B14(void *, void *);
void MREP_3DA43089EA0D4EA1A8A43E5DC7B6FB1D(void *, void *);
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
MREP_F38AE3BCBDB84A8D98839D7B49600744(self, 0);
MREP_9B995ABB73054B77B812AC35FB39442E(self, 0);
MREP_D18607D96F454256BA0FF7870A5609FC(self, 0);
MREP_894F8204B484421BA46ACB2DD69CD561(self, 0);
MREP_F8C444C6C677439BA7D834EEE47618A9(self, 0);
MREP_3BD814E33E684DD0A21EE25C415D680B(self, 0);
MREP_622C1F3BD35147A1BF4962376C7B3B14(self, 0);
MREP_3DA43089EA0D4EA1A8A43E5DC7B6FB1D(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
