.class public Lxd/j;
.super Lg7/b;
.source "_SequencesJvm.kt"


# direct methods
.method public static final l(Ljava/util/Iterator;)Lxd/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lxd/i;

    invoke-direct {v0, p0}, Lxd/i;-><init>(Ljava/util/Iterator;)V

    .line 2
    instance-of p0, v0, Lxd/a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lxd/a;

    invoke-direct {p0, v0}, Lxd/a;-><init>(Lxd/d;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method
