.class public final Ls2/m$c;
.super Ls2/c;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/c<",
        "Ls2/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls2/l;
    .locals 1

    new-instance v0, Ls2/m$b;

    invoke-direct {v0, p0}, Ls2/m$b;-><init>(Ls2/m$c;)V

    return-object v0
.end method

.method public final d(ILandroid/graphics/Bitmap$Config;)Ls2/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls2/c;->b()Ls2/l;

    move-result-object v0

    check-cast v0, Ls2/m$b;

    .line 2
    iput p1, v0, Ls2/m$b;->b:I

    .line 3
    iput-object p2, v0, Ls2/m$b;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
