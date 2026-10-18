.class public final Lwa/i$a;
.super Lrd/o;
.source "AdaptKitRequirementsReceiver.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/i;-><init>(Lv9/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lwa/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lwa/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/i$a;

    invoke-direct {v0}, Lwa/i$a;-><init>()V

    sput-object v0, Lwa/i$a;->h:Lwa/i$a;

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

    sget v0, Lwa/j;->a:I

    sget-object v0, Lwa/k;->b:Lwa/k;

    return-object v0
.end method
