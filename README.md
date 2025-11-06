# README.md
# Aztec Private Voting dApp (Noir)

## Overview
Пример демонстрирует децентрализованное приватное голосование на языке **Noir**, основанное на концепции **zero-knowledge proofs**, как в проектах **Aztec** и **Zama**.  
Голоса не раскрываются публично, но их сумма и результат подтверждаются доказательством целостности.

## Установка
1. Установите Noir:
   curl -L https://noir-lang.org/install | bash
2. Создайте новый проект:
   noir new aztec_vote
3. Вставьте код из `app.nr` в `src/main.nr`.

## Компиляция и запуск
   noir run

## Ожидаемый результат
🗳️ Private Aztec Voting dApp  
Votes for: 37  
Votes against: 29  
🔒 Zero-knowledge commitment generated: 0x43a...  
✅ Proposal PASSED under ZK verification

## Примечания
- В реальной dApp данные о голосах могут быть заменены на приватные Pedersen commitments.  
- Noir позволяет выполнять безопасные вычисления без раскрытия самих значений.  
- Подходит как база для **zkDAO**, приватных опросов или governance-систем в **Aztec**, **Zama** и **Aleo**.  
- Можно добавить шаг публикации агрегированного доказательства в смарт-контракт через L2-бридж Aztec Connect.  
