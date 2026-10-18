.class public final Lfb/o$b;
.super Ljava/lang/Object;
.source "FitCalibrateUtil.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfb/o;-><init>(Lv9/a;Lya/b;Lya/b;Lfb/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lv9/g;",
        "Lv9/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lfb/o;


# direct methods
.method public constructor <init>(Lfb/o;)V
    .locals 0

    iput-object p1, p0, Lfb/o$b;->a:Lfb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lv9/g;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lfb/o$b;->a:Lfb/o;

    invoke-static {v0, p1}, Lfb/o;->a(Lfb/o;Lv9/g;)V

    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 2

    .line 1
    check-cast p1, Lv9/f;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lfb/o$b;->a:Lfb/o;

    .line 4
    new-instance v0, Lba/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lba/p;-><init>(I)V

    .line 5
    iput-object v0, p1, Lfb/o;->f:Lba/v;

    .line 6
    iget-object p1, p0, Lfb/o$b;->a:Lfb/o;

    .line 7
    invoke-virtual {p1}, Lfb/o;->d()V

    return-void
.end method
