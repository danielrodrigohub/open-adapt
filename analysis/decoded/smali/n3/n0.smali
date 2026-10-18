.class public final Ln3/n0;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ln3/s1$a;


# instance fields
.field public final synthetic a:Ln3/o0;


# direct methods
.method public constructor <init>(Ln3/o0;)V
    .locals 0

    iput-object p1, p0, Ln3/n0;->a:Ln3/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n0;->a:Ln3/o0;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ln3/o0;->O:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n0;->a:Ln3/o0;

    .line 2
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0, v1}, Lm5/l;->e(I)Z

    return-void
.end method
