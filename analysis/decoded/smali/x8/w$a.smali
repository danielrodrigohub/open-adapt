.class public final Lx8/w$a;
.super Lrd/o;
.source "LacingController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx8/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "[F>;"
    }
.end annotation


# static fields
.field public static final h:Lx8/w$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx8/w$a;

    invoke-direct {v0}, Lx8/w$a;-><init>()V

    sput-object v0, Lx8/w$a;->h:Lx8/w$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    const/16 v0, 0x15

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-float v3, v2

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
