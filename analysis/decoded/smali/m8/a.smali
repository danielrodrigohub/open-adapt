.class public final Lm8/a;
.super Ljava/lang/Object;
.source "BigfootOnBoardingRepository.kt"


# static fields
.field public static final a:Lm8/a;

.field public static final b:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm8/a;

    invoke-direct {v0}, Lm8/a;-><init>()V

    sput-object v0, Lm8/a;->a:Lm8/a;

    sget-object v0, Lm8/a$a;->h:Lm8/a$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lm8/a;->b:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh8/d;
    .locals 1

    sget-object v0, Lm8/a;->b:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method
