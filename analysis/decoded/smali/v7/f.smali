.class public final Lv7/f;
.super Lv7/j;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7/f$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv7/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/f$a;

    invoke-direct {v0}, Lv7/f$a;-><init>()V

    sput-object v0, Lv7/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv7/j;-><init>()V

    .line 2
    sget-object v0, Lv7/f$c;->h:Lv7/f$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lv7/f;->k:Lfd/d;

    .line 3
    sget-object v0, Lv7/g;->j:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 4
    sget-object v0, Lv7/g;->k:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 5
    sget-object v0, Lv7/g;->l:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 6
    sget-object v0, Lv7/g;->m:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 7
    sget-object v0, Lv7/g;->n:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 8
    sget-object v0, Lv7/g;->o:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 9
    sget-object v0, Lv7/g;->p:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 10
    sget-object v0, Lv7/g;->q:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 11
    sget-object v0, Lv7/g;->s:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    sget-object v0, Lv7/g;->k:Lv7/g;

    iget-object v1, p0, Lv7/j;->j:Lv7/g;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 2
    :cond_0
    sget-object v3, Lv7/f$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    const/16 v3, -0x32

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    iget-object v1, p0, Lv7/j;->h:Lp/h;

    .line 4
    iget-object v3, p0, Lv7/j;->j:Lv7/g;

    .line 5
    invoke-virtual {v1, v3}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v3, p0, Lv7/j;->h:Lp/h;

    .line 7
    invoke-virtual {v3, v0}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    sub-int/2addr v1, v0

    mul-int/2addr v2, v1

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_3

    .line 8
    :pswitch_3
    iget-object v1, p0, Lv7/j;->h:Lp/h;

    .line 9
    iget-object v3, p0, Lv7/j;->j:Lv7/g;

    .line 10
    invoke-virtual {v1, v3}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v1

    .line 11
    iget-object v3, p0, Lv7/j;->h:Lp/h;

    .line 12
    invoke-virtual {v3, v0}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :goto_2
    :pswitch_4
    move v2, v3

    :goto_3
    :pswitch_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lv7/j;->j:Lv7/g;

    .line 2
    sget-object v1, Lv7/g;->k:Lv7/g;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lv7/f;->k:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    .line 4
    sget-object v1, Lh8/d$a;->i:Lh8/d$a;

    invoke-interface {v0, v1}, Lh8/d;->b(Lh8/d$a;)Ls9/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lv7/f;->k:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    .line 6
    sget-object v1, Lh8/d$a;->j:Lh8/d$a;

    invoke-interface {v0, v1}, Lh8/d;->b(Lh8/d$a;)Ls9/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lv7/j;->h:Lp/h;

    .line 8
    sget-object v1, Lv7/g;->p:Lv7/g;

    invoke-virtual {v0, v1}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v0

    .line 9
    iget-object v1, p0, Lv7/j;->h:Lp/h;

    .line 10
    iget-object v2, p0, Lv7/j;->j:Lv7/g;

    .line 11
    invoke-virtual {v1, v2}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
