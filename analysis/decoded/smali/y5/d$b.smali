.class public final Ly5/d$b;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Ly5/d;",
        "Ly5/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ly5/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Ly5/d;",
            "Ly5/d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly5/d$b;

    invoke-direct {v0}, Ly5/d$b;-><init>()V

    sput-object v0, Ly5/d$b;->a:Ly5/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-class v0, Ly5/d$d;

    const-string v1, "circularReveal"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ly5/d;

    .line 2
    invoke-interface {p1}, Ly5/d;->getRevealInfo()Ly5/d$d;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ly5/d;

    check-cast p2, Ly5/d$d;

    .line 2
    invoke-interface {p1, p2}, Ly5/d;->setRevealInfo(Ly5/d$d;)V

    return-void
.end method
