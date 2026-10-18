.class public final Li9/e0$a;
.super Lrd/o;
.source "WelcomeOnBoardingFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/e0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lh8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Li9/e0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/e0$a;

    invoke-direct {v0}, Li9/e0$a;-><init>()V

    sput-object v0, Li9/e0$a;->h:Li9/e0$a;

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
    sget v0, Lh8/a;->a:I

    .line 2
    sget-object v0, Lh8/c;->b:Lh8/c;

    return-object v0
.end method
