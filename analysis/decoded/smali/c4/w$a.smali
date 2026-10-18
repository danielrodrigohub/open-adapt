.class public final Lc4/w$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc4/j;

.field public final b:Lm5/d0;

.field public final c:Lm5/v;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lc4/j;Lm5/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/w$a;->a:Lc4/j;

    .line 3
    iput-object p2, p0, Lc4/w$a;->b:Lm5/d0;

    .line 4
    new-instance p1, Lm5/v;

    const/16 p2, 0x40

    new-array v0, p2, [B

    .line 5
    invoke-direct {p1, v0, p2}, Lm5/v;-><init>([BI)V

    .line 6
    iput-object p1, p0, Lc4/w$a;->c:Lm5/v;

    return-void
.end method
