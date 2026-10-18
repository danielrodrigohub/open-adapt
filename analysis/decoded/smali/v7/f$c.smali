.class public final Lv7/f$c;
.super Lrd/o;
.source "OnBoarding.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lh8/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv7/f$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/f$c;

    invoke-direct {v0}, Lv7/f$c;-><init>()V

    sput-object v0, Lv7/f$c;->h:Lv7/f$c;

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
    .locals 1

    .line 1
    sget v0, Lh8/d;->a:I

    .line 2
    sget-object v0, Lh8/e;->b:Lh8/e;

    return-object v0
.end method
