.class public final Lj8/b$a;
.super Lrd/o;
.source "BigfootOnBoardingPresenter.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/b;-><init>(Li8/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lm8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lj8/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj8/b$a;

    invoke-direct {v0}, Lj8/b$a;-><init>()V

    sput-object v0, Lj8/b$a;->h:Lj8/b$a;

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

    sget-object v0, Lm8/a;->a:Lm8/a;

    return-object v0
.end method
