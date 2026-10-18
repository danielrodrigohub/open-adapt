.class public final synthetic Lp4/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp4/e0$a;

.field public final synthetic i:Lp4/e0;

.field public final synthetic j:Lp4/r;

.field public final synthetic k:Lp4/u;

.field public final synthetic l:Ljava/io/IOException;

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(Lp4/e0$a;Lp4/e0;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/d0;->h:Lp4/e0$a;

    iput-object p2, p0, Lp4/d0;->i:Lp4/e0;

    iput-object p3, p0, Lp4/d0;->j:Lp4/r;

    iput-object p4, p0, Lp4/d0;->k:Lp4/u;

    iput-object p5, p0, Lp4/d0;->l:Ljava/io/IOException;

    iput-boolean p6, p0, Lp4/d0;->m:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lp4/d0;->h:Lp4/e0$a;

    iget-object v1, p0, Lp4/d0;->i:Lp4/e0;

    iget-object v4, p0, Lp4/d0;->j:Lp4/r;

    iget-object v5, p0, Lp4/d0;->k:Lp4/u;

    iget-object v6, p0, Lp4/d0;->l:Ljava/io/IOException;

    iget-boolean v7, p0, Lp4/d0;->m:Z

    iget v2, v0, Lp4/e0$a;->a:I

    iget-object v3, v0, Lp4/e0$a;->b:Lp4/x$b;

    invoke-interface/range {v1 .. v7}, Lp4/e0;->P(ILp4/x$b;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    return-void
.end method
