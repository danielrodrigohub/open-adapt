.class public final Lw9/x$q;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->v(Lv9/a;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lea/p;",
        "Lea/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$q;->a:Lw9/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    check-cast p1, Lea/p;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePair: success "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lw9/x$q;->a:Lw9/x;

    .line 5
    iget-object v1, v0, Lw9/x;->E:Lw9/x$q0;

    .line 6
    new-instance v2, Lv9/k2;

    .line 7
    iget-object v0, v0, Lw9/x;->l:Lea/m;

    .line 8
    iget-object v0, v0, Lea/m;->k:Lea/b;

    .line 9
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lea/p;->a()Lv9/a;

    move-result-object v3

    .line 11
    invoke-direct {v2, v0, v3}, Lv9/k2;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 12
    invoke-virtual {v1, v2}, Lw9/x$q0;->d(Lv9/g;)V

    .line 13
    iget-object v0, p0, Lw9/x$q;->a:Lw9/x;

    .line 14
    iget-object v1, v0, Lw9/x;->E:Lw9/x$q0;

    .line 15
    new-instance v2, Lv9/k2;

    .line 16
    iget-object v0, v0, Lw9/x;->l:Lea/m;

    .line 17
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 18
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lea/p;->a()Lv9/a;

    move-result-object p1

    .line 20
    invoke-direct {v2, v0, p1}, Lv9/k2;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 21
    invoke-virtual {v1, v2}, Lw9/x$q0;->d(Lv9/g;)V

    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 7

    .line 1
    check-cast p1, Lea/o;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePair: error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lw9/x$q;->a:Lw9/x;

    .line 5
    iget-object v0, v0, Lw9/x;->E:Lw9/x$q0;

    .line 6
    new-instance v1, Lv9/i2;

    .line 7
    iget-object v2, p0, Lw9/x$q;->a:Lw9/x;

    .line 8
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 9
    iget-object v2, v2, Lea/m;->k:Lea/b;

    .line 10
    iget-object v2, v2, Lea/b;->j:Ljava/lang/String;

    .line 11
    iget-object v3, p1, Lea/o;->i:Lv9/a;

    .line 12
    invoke-direct {v1, v2, v3, p1}, Lv9/i2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v0, v1}, Lw9/x$q0;->c(Lv9/f;)V

    return-void
.end method
