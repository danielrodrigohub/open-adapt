.class public final Lv7/a;
.super Lv7/j;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7/a$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/a$a;

    invoke-direct {v0}, Lv7/a$a;-><init>()V

    sput-object v0, Lv7/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv7/j;-><init>()V

    .line 2
    sget-object v0, Lv7/g;->h:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 3
    sget-object v0, Lv7/g;->l:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 4
    sget-object v0, Lv7/g;->m:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 5
    sget-object v0, Lv7/g;->n:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 6
    sget-object v0, Lv7/g;->o:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 7
    sget-object v0, Lv7/g;->p:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 8
    sget-object v0, Lv7/g;->q:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 9
    sget-object v0, Lv7/g;->s:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    sget-object v0, Lv7/g;->h:Lv7/g;

    iget-object v1, p0, Lv7/j;->j:Lv7/g;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 2
    :cond_0
    sget-object v3, Lv7/a$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/16 v2, -0x32

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

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_2

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
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

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
