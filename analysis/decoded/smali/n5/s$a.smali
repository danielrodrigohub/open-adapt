.class public final Ln5/s$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ln5/s;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ln5/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/s$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Ln5/s$a;->b:Ln5/s;

    return-void
.end method
