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
void MREP_B268272E4AE949CDB42E35D127FDDB13(void *, void *);
void MREP_5E37627523D2468EB91EA078C63EC2B0(void *, void *);
void MREP_DDF84BD2BD7E4DECA00AF50BB9CE3DB0(void *, void *);
void MREP_4BAA28AF7584440286326C168FA5B147(void *, void *);
void MREP_87945B95BC424C6099D4F53E11E5421A(void *, void *);
void MREP_98EFC233292D441E929CB17D52749C76(void *, void *);
void MREP_7F568218F44642DBAAE7DD81D005CF73(void *, void *);
void MREP_55257CB60261463DA2417D6C90ABB054(void *, void *);
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
MREP_B268272E4AE949CDB42E35D127FDDB13(self, 0);
MREP_5E37627523D2468EB91EA078C63EC2B0(self, 0);
MREP_DDF84BD2BD7E4DECA00AF50BB9CE3DB0(self, 0);
MREP_4BAA28AF7584440286326C168FA5B147(self, 0);
MREP_87945B95BC424C6099D4F53E11E5421A(self, 0);
MREP_98EFC233292D441E929CB17D52749C76(self, 0);
MREP_7F568218F44642DBAAE7DD81D005CF73(self, 0);
MREP_55257CB60261463DA2417D6C90ABB054(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
