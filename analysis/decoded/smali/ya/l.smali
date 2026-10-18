.class public final Lya/l;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lya/h0<",
        "*>;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lya/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lya/l;

    invoke-direct {v0}, Lya/l;-><init>()V

    sput-object v0, Lya/l;->h:Lya/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lya/h0;

    .line 2
    invoke-virtual {p1}, Lya/h0;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
