.class public final Ls9/h;
.super Ljava/lang/Object;
.source "FirmwareUpdateUtil.kt"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ls9/h;->a:Ljava/util/ArrayList;

    const-string v1, "SM-N98"

    const-string v2, "SM-N97"

    const-string v3, "SM-N96"

    const-string v4, "SC-01M"

    const-string v5, "SCV45"

    const-string v6, "SM-N770F"

    const-string v7, "SC-01L"

    const-string v8, "SCV40"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Ls9/h;->b:Ljava/util/ArrayList;

    return-void
.end method
