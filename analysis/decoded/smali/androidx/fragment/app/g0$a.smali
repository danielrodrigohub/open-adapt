.class public final Landroidx/fragment/app/g0$a;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/m;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/lifecycle/i$c;

.field public h:Landroidx/lifecycle/i$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/fragment/app/g0$a;->a:I

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    .line 5
    sget-object p1, Landroidx/lifecycle/i$c;->l:Landroidx/lifecycle/i$c;

    iput-object p1, p0, Landroidx/fragment/app/g0$a;->g:Landroidx/lifecycle/i$c;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/i$c;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/m;Landroidx/lifecycle/i$c;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Landroidx/fragment/app/g0$a;->a:I

    .line 9
    iput-object p1, p0, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    .line 10
    iget-object p1, p1, Landroidx/fragment/app/m;->T:Landroidx/lifecycle/i$c;

    iput-object p1, p0, Landroidx/fragment/app/g0$a;->g:Landroidx/lifecycle/i$c;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/i$c;

    return-void
.end method
