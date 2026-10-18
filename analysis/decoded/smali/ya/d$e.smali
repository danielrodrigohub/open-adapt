.class public final Lya/d$e;
.super Ljava/lang/InterruptedException;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final h:Lya/d$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lya/d$e;

    invoke-direct {v0}, Lya/d$e;-><init>()V

    sput-object v0, Lya/d$e;->h:Lya/d$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Command stopped via Disconnect"

    invoke-direct {p0, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    return-void
.end method
