.class public final Ln3/o0$g;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ln3/b2;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ln3/b2;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/o0$g;->a:Ln3/b2;

    .line 3
    iput p2, p0, Ln3/o0$g;->b:I

    .line 4
    iput-wide p3, p0, Ln3/o0$g;->c:J

    return-void
.end method
