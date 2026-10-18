.class public final Ly8/f;
.super Lrd/o;
.source "LightingEffectsActivity.kt"

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
.field public static final h:Ly8/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly8/f;

    invoke-direct {v0}, Ly8/f;-><init>()V

    sput-object v0, Ly8/f;->h:Ly8/f;

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
