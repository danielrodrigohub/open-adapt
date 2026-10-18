.class public final Lcom/google/android/exoplayer2/source/dash/c$c;
.super Lr4/b;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lcom/google/android/exoplayer2/source/dash/c$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/c$b;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lr4/b;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr4/b;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 3
    iget-wide v1, p0, Lr4/b;->d:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr4/b;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 3
    iget-wide v1, p0, Lr4/b;->d:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v0

    return-wide v0
.end method
