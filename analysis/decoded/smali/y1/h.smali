.class public final Ly1/h;
.super Ll2/c;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ll2/e;


# direct methods
.method public constructor <init>(Ll2/e;)V
    .locals 0

    iput-object p1, p0, Ly1/h;->c:Ll2/e;

    invoke-direct {p0}, Ll2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll2/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Ly1/h;->c:Ll2/e;

    invoke-interface {p1}, Ll2/e;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
