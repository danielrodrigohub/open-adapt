.class public final Lc3/i;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final a:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Lp2/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp2/b;->h:Lp2/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Lc3/i;->a:Lp2/g;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Lc3/i;->b:Lp2/g;

    return-void
.end method
