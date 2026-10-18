.class public final Lv9/t$b;
.super Lrd/o;
.source "AdaptKitModule.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lab/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv9/t$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/t$b;

    invoke-direct {v0}, Lv9/t$b;-><init>()V

    sput-object v0, Lv9/t$b;->h:Lv9/t$b;

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
    sget-object v0, Lab/a;->a:Lab/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lab/a$a;->b:Lab/b;

    return-object v0
.end method
