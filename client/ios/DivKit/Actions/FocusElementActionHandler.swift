import LayoutKit

final class FocusElementActionHandler {
  func handle(_ action: DivActionFocusElement, context: DivActionHandlingContext) {
    guard let elementId = action.resolveElementId(context.expressionResolver) else {
      return
    }

    if let previousCard = context.blockStateStorage.getFocusedElement()?.cardId {
      context.updateCard(.state(previousCard))
    }

    let cardId = context.path.cardId
    let element = IdAndCardId(id: elementId, cardId: cardId)

    context.blockStateStorage.setFocused(
      isFocused: true,
      element: element
    )
    context.updateCard(.state(cardId))
  }
}
