.class public final Le4/l$a;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le4/n;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Ln3/s0;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;


# direct methods
.method public constructor <init>(Le4/n;Landroid/media/MediaFormat;Ln3/s0;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le4/l$a;->a:Le4/n;

    .line 3
    iput-object p2, p0, Le4/l$a;->b:Landroid/media/MediaFormat;

    .line 4
    iput-object p3, p0, Le4/l$a;->c:Ln3/s0;

    .line 5
    iput-object p4, p0, Le4/l$a;->d:Landroid/view/Surface;

    .line 6
    iput-object p5, p0, Le4/l$a;->e:Landroid/media/MediaCrypto;

    return-void
.end method
