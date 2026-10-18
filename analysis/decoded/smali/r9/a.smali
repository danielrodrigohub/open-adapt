.class public final Lr9/a;
.super Ljava/lang/Object;
.source "SingleClickListener.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static j:J


# instance fields
.field public final h:Landroid/view/View$OnClickListener;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;I)V
    .locals 1

    const-string v0, "mOnClickListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr9/a;->h:Landroid/view/View$OnClickListener;

    iput p2, p0, Lr9/a;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lr9/a;->j:J

    sub-long v2, v0, v2

    iget v4, p0, Lr9/a;->i:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    sput-wide v0, Lr9/a;->j:J

    .line 4
    iget-object v0, p0, Lr9/a;->h:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
