.class public final Lk1/c$a;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lk1/m;

.field public c:Lk1/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk1/c$a;->a:Z

    .line 3
    sget-object v0, Lk1/m;->h:Lk1/m;

    iput-object v0, p0, Lk1/c$a;->b:Lk1/m;

    .line 4
    new-instance v0, Lk1/d;

    invoke-direct {v0}, Lk1/d;-><init>()V

    iput-object v0, p0, Lk1/c$a;->c:Lk1/d;

    return-void
.end method
