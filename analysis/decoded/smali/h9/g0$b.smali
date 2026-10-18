.class public final Lh9/g0$b;
.super Ljava/lang/Object;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh9/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lh9/g0;->g:Lfd/d;

    .line 2
    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
