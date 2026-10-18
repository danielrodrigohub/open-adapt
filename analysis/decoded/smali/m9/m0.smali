.class public final Lm9/m0;
.super Lrd/o;
.source "ShoeProfileActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lm9/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/m0;

    invoke-direct {v0}, Lm9/m0;-><init>()V

    sput-object v0, Lm9/m0;->h:Lm9/m0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
