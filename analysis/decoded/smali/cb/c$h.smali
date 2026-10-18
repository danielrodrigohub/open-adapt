.class public final Lcb/c$h;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljc/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljc/f;"
        }
    .end annotation

    .line 1
    sget v0, Ljc/f;->a:I

    .line 2
    sget-object v0, Lcb/c;->b:Lcb/c;

    .line 3
    invoke-virtual {v0}, Lcb/c;->e()Landroid/app/Application;

    move-result-object v0

    const-string v1, "application"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljc/b;

    invoke-direct {v1, v0}, Ljc/b;-><init>(Landroid/app/Application;)V

    return-object v1
.end method
