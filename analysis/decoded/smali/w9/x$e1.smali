.class public final Lw9/x$e1;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lbb/a;",
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
            "Lbb/a;"
        }
    .end annotation

    .line 1
    sget v0, Lbb/a;->a:I

    .line 2
    sget v0, Lfb/l;->b:I

    sget-object v0, Landroidx/emoji2/text/b;->i:Landroidx/emoji2/text/b;

    .line 3
    new-instance v1, Lbb/b;

    invoke-direct {v1, v0}, Lbb/b;-><init>(Lfb/l;)V

    return-object v1
.end method
