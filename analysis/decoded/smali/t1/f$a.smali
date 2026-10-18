.class public final Lt1/f$a;
.super Ly0/q;
.source "PreferenceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/f;-><init>(Ly0/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly0/q<",
        "Lt1/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Ly0/q;-><init>(Ly0/d0;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public final e(Ld1/g;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lt1/d;

    .line 2
    iget-object v0, p2, Lt1/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lt1/d;->b:Ljava/lang/Long;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ld1/e;->t(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ld1/e;->K(IJ)V

    :goto_1
    return-void
.end method
