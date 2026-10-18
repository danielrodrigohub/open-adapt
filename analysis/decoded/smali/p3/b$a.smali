.class public final Lp3/b$a;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/b$a;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lp3/b$a;->c:I

    .line 4
    iput p3, p0, Lp3/b$a;->b:I

    .line 5
    iput p4, p0, Lp3/b$a;->d:I

    .line 6
    iput p5, p0, Lp3/b$a;->e:I

    return-void
.end method
