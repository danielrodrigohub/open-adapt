.class public final Lm8/i$a;
.super Lrd/o;
.source "ManifestRepository.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lx7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lm8/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm8/i$a;

    invoke-direct {v0}, Lm8/i$a;-><init>()V

    sput-object v0, Lm8/i$a;->h:Lm8/i$a;

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
    sget v0, Lx7/a;->a:I

    .line 2
    sget-object v0, Lx7/b;->b:Lx7/b;

    return-object v0
.end method
