.class public final Lm8/i;
.super Ljava/lang/Object;
.source "ManifestRepository.kt"


# static fields
.field public static final a:Lm8/i;

.field public static final b:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm8/i;

    invoke-direct {v0}, Lm8/i;-><init>()V

    sput-object v0, Lm8/i;->a:Lm8/i;

    sget-object v0, Lm8/i$a;->h:Lm8/i$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lm8/i;->b:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
