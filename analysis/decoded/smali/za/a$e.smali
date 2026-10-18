.class public final Lza/a$e;
.super Lrd/o;
.source "AdaptKitCoreRF.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/a;->C(Lnc/a;)V
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

    iput-object p1, p0, Lza/a$e;->h:Lnc/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p0, Lza/a$e;->h:Lnc/a;

    const-string v1, "param_result_outgoing_key"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 5
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    .line 6
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0, v1}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_3

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "extra_error_outgoing_key"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "No error message supplied. Result was not present"

    .line 10
    :cond_4
    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v1}, Llc/b;->k(Ljava/lang/Throwable;)V

    .line 12
    :cond_5
    :goto_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
