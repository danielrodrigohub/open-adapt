.class public final Lw4/e$a;
.super Ljava/lang/Object;
.source "RtpPacketReorderingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lw4/c;

.field public final b:J


# direct methods
.method public constructor <init>(Lw4/c;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw4/e$a;->a:Lw4/c;

    .line 3
    iput-wide p2, p0, Lw4/e$a;->b:J

    return-void
.end method
