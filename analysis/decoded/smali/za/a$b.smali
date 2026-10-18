.class public final Lza/a$b;
.super Lrd/o;
.source "AdaptKitCoreRF.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/a;->w(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/os/Bundle;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lnc/a;


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0

    iput-object p1, p0, Lza/a$b;->h:Lnc/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lia/a$a;->a:Lia/a$a;

    iget-object v1, p0, Lza/a$b;->h:Lnc/a;

    .line 3
    invoke-virtual {v0, p1}, Lia/a;->l(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    check-cast v2, Lmc/c;

    invoke-interface {v1, v2}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    .line 6
    invoke-virtual {v0, p1}, Lia/a;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "No error message supplied. Result was not present"

    .line 7
    :cond_1
    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v2}, Llc/b;->k(Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
