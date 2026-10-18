.class public final Ln3/l;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lm5/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/l$a;
    }
.end annotation


# instance fields
.field public final h:Lm5/z;

.field public final i:Ln3/l$a;

.field public j:Ln3/s1;

.field public k:Lm5/r;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Ln3/l$a;Lm5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/l;->i:Ln3/l$a;

    .line 3
    new-instance p1, Lm5/z;

    invoke-direct {p1, p2}, Lm5/z;-><init>(Lm5/c;)V

    iput-object p1, p0, Ln3/l;->h:Lm5/z;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ln3/l;->l:Z

    return-void
.end method


# virtual methods
.method public final d()Ln3/m1;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/l;->k:Lm5/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lm5/r;->d()Ln3/m1;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/l;->h:Lm5/z;

    .line 4
    iget-object v0, v0, Lm5/z;->l:Ln3/m1;

    :goto_0
    return-object v0
.end method

.method public final f(Ln3/m1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/l;->k:Lm5/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lm5/r;->f(Ln3/m1;)V

    .line 3
    iget-object p1, p0, Ln3/l;->k:Lm5/r;

    invoke-interface {p1}, Lm5/r;->d()Ln3/m1;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/l;->h:Lm5/z;

    invoke-virtual {v0, p1}, Lm5/z;->f(Ln3/m1;)V

    return-void
.end method

.method public final w()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/l;->l:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/l;->h:Lm5/z;

    invoke-virtual {v0}, Lm5/z;->w()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/l;->k:Lm5/r;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Lm5/r;->w()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
