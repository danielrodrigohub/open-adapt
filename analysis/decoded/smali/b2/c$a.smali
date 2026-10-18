.class public final Lb2/c$a;
.super Ll2/c;
.source "DropShadowKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/c;->f(Ll2/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/c<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ll2/c;


# direct methods
.method public constructor <init>(Ll2/c;)V
    .locals 0

    iput-object p1, p0, Lb2/c$a;->c:Ll2/c;

    invoke-direct {p0}, Ll2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll2/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/c$a;->c:Ll2/c;

    invoke-virtual {v0, p1}, Ll2/c;->a(Ll2/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x40233333

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    return-object p1
.end method
