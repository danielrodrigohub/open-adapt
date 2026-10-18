.class public final Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$b;
.super Lrd/o;
.source "SelectShoesActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/util/ArrayList<",
        "Lu8/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$b;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Lu8/q;

    new-instance v7, Lu8/q;

    iget-object v2, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$b;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    new-instance v3, Lcom/nike/adapt/ui/myshoes/a;

    invoke-direct {v3, v2}, Lcom/nike/adapt/ui/myshoes/a;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x1c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
