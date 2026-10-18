.class public final Ln3/h1$b;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp4/x;

.field public final b:Lp4/x$c;

.field public final c:Ln3/h1$a;


# direct methods
.method public constructor <init>(Lp4/x;Lp4/x$c;Ln3/h1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/h1$b;->a:Lp4/x;

    .line 3
    iput-object p2, p0, Ln3/h1$b;->b:Lp4/x$c;

    .line 4
    iput-object p3, p0, Ln3/h1$b;->c:Ln3/h1$a;

    return-void
.end method
