.class public final Lk9/a;
.super Ljava/lang/Object;
.source "RateDialogHelper.kt"


# instance fields
.field public final a:Lh8/a;

.field public final b:Lk9/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lk9/a;-><init>(Lh8/a;Lk9/b;ILrd/h;)V

    return-void
.end method

.method public constructor <init>(Lh8/a;Lk9/b;ILrd/h;)V
    .locals 0

    .line 1
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 2
    sget-object p2, Lk9/c;->a:Lk9/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk9/a;->a:Lh8/a;

    .line 5
    iput-object p2, p0, Lk9/a;->b:Lk9/b;

    return-void
.end method
