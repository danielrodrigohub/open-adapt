.class public final Lu4/b;
.super Ljava/lang/Object;
.source "BundledHlsMediaChunkExtractor.java"

# interfaces
.implements Lu4/k;


# static fields
.field public static final d:Ls3/t;


# instance fields
.field public final a:Ls3/h;

.field public final b:Ln3/s0;

.field public final c:Lm5/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls3/t;

    invoke-direct {v0}, Ls3/t;-><init>()V

    sput-object v0, Lu4/b;->d:Ls3/t;

    return-void
.end method

.method public constructor <init>(Ls3/h;Ln3/s0;Lm5/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/b;->a:Ls3/h;

    .line 3
    iput-object p2, p0, Lu4/b;->b:Ln3/s0;

    .line 4
    iput-object p3, p0, Lu4/b;->c:Lm5/d0;

    return-void
.end method
