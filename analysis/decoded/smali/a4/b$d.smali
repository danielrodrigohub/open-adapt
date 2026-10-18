.class public final La4/b$d;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:[La4/m;

.field public b:Ln3/s0;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [La4/m;

    iput-object p1, p0, La4/b$d;->a:[La4/m;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, La4/b$d;->d:I

    return-void
.end method
