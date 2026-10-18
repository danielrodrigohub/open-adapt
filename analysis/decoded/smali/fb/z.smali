.class public final Lfb/z;
.super Ljava/lang/Object;
.source "SessionDownload.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lfb/s$a;


# direct methods
.method public constructor <init>(Lfb/s$a;)V
    .locals 0

    iput-object p1, p0, Lfb/z;->h:Lfb/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    iget-object p1, p0, Lfb/z;->h:Lfb/s$a;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lya/h0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfb/z;->h:Lfb/s$a;

    invoke-virtual {v0, p1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method
